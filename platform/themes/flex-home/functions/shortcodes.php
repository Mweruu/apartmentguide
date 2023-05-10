<?php

use Botble\Theme\Supports\ThemeSupport;

app()->booted(function () {

	if(!config('apartment.production')) {
		ThemeSupport::registerGoogleMapsShortcode();
		ThemeSupport::registerYoutubeShortcode();
	}

    if (is_plugin_active('real-estate')) {
        add_shortcode('featured-projects', __('Featured projects'), __('Featured projects'), function () {
            return Theme::partial('short-codes.featured-projects');
        });

		 add_shortcode('featured-properties', __('Featured properties'), __('Featured properties'), function () {
            return Theme::partial('short-codes.featured-properties');
        });

        add_shortcode('projects-by-locations', __('Projects by locations'), __('Projects by locations'), function () {
            return Theme::partial('short-codes.projects-by-locations');
        });

        add_shortcode('properties-by-locations', __('Properties by locations'), __('Properties by locations'),
            function () {
                return Theme::partial('short-codes.properties-by-locations');
            });

        add_shortcode('properties-for-sale', __('Properties for sale'), __('Properties for sale'), function () {
            return Theme::partial('short-codes.properties-for-sale');
        });

        add_shortcode('properties-for-rent', __('Properties for rent'), __('Properties for rent'), function () {
            return Theme::partial('short-codes.properties-for-rent');
        });

		add_shortcode('listing-banner', 'listing-banner', 'listing-banner', function () {
            return Theme::partial('short-codes.listing-banner');
        });

		add_shortcode('we_located_to_live', 'we_located_to_live', 'we_located_to_live', function () {
            return Theme::partial('short-codes.we_located_to_live');
        });

		add_shortcode('calculator-form', 'EMI Calculator', 'EMI Calculator', function () {
            return Theme::partial('short-codes.calculator-form');
        });

        add_shortcode('recently-viewed-properties', __('Recent Viewed Properties'), __('Recently Viewed Properties'),
            function ($shortcode) {

                $cookieName = App::getLocale() . '_recently_viewed_properties';

                $jsonRecentlyViewedProperties = null;
                if (isset($_COOKIE[$cookieName])) {
                    $jsonRecentlyViewedProperties = $_COOKIE[$cookieName];
                }
                $arrValue = collect(json_decode($jsonRecentlyViewedProperties, true))->flatten()->all();

                if (count($arrValue) > 0) {
                    return Theme::partial('short-codes.recently-viewed-properties', [
                        'title'       => $shortcode->title,
                        'description' => $shortcode->description,
                        'subtitle'    => $shortcode->subtitle,
                    ]);
                }

                return null;
            });

        shortcode()->setAdminConfig('recently-viewed-properties', function ($attributes, $content) {
            return Theme::partial('short-codes.recently-viewed-properties-admin-config', compact('attributes', 'content'));
        });

        if(!config('apartment.production')) 
		{
			add_shortcode('featured-agents', __('Featured Agents'), __('Featured Agents'),
				function ($shortcode) {
					return Theme::partial('short-codes.featured-agents', [
						'title'       => $shortcode->title,
						'description' => $shortcode->description,
						'subtitle'    => $shortcode->subtitle,
						'limit'       => $shortcode->limit,
					]);
				});

			shortcode()->setAdminConfig('featured-agents', function ($attributes, $content) {
				return Theme::partial('short-codes.featured-agents-admin-config', compact('attributes', 'content'));
			});
		}
    }

    if (is_plugin_active('blog')) {
        add_shortcode('latest-news', __('Latest news'), __('Latest news'), function () {
            return Theme::partial('short-codes.latest-news');
        });
    }

    if (is_plugin_active('contact')) {
        add_filter(CONTACT_FORM_TEMPLATE_VIEW, function () {
            return Theme::getThemeNamespace() . '::partials.short-codes.contact-form';
        }, 120);
    }
});
